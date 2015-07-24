//
//  Book.m
//  App 04 Objects Library
//
//  Created by Anderson Tagata on 18/07/15.
//  Copyright (c) 2015 ATT. All rights reserved.
//

#import "Book.h"

@implementation Book

//init OverRide (Inicialização personalizada)
-(id)init{
    self = [super init]; // Isso garante da carga de inicializacao da classe pai (super) ou seja NSObject
    if (self) {
        //Init Code aqui!
        self.title = @"";
        self.author = @"";
        self.publisher = @"";
        self.isbn = @"0000000000000";
        self.nrPages = 0;
        self.yearPublished = -1;
        self.yearActual = -1;
    }
    return self;
}

//init especial (Inicialização para caso de exemplos ou testes)
-(id)initBookSample1{
    self = [super init];// Isso garante da carga de inicializacao da classe pai (super) ou seja NSObject
    if (self) {
        //Init Code aqui!
        self.title = @"Aprendendo Cocoa com Objective-C";
        self.author = @"Paris Buttfield - Addison Jonathon Manning";
        self.yearPublished = 2013;
        self.yearActual = 2015;
        self.publisher = @"Novatec";
        self.nrPages = 364;
        self.isbn = @"9788575223420";
    }
    return self;
}

//init especial (Inicialização para caso de exemplos ou testes)
-(id)initBookSample2{
    self = [super init];// Isso garante da carga de inicializacao da classe pai (super) ou seja NSObject
    if (self) {
        //Init Code aqui!
        self.title = @"Aprendendo Programação iOS";
        self.author = @"Alasdair Allan";
        self.yearPublished = 2013;
        self.yearActual = 2015;
        self.publisher = @"Novatec";
        self.nrPages = 446;
        self.isbn = @"9788575223635";
    }
    return self;
}

//init parametrizado (Inicialização para caso de inicializar uma classe passando todos os valores para cada propriedade da classe, usado quando vc ja tiver os dados para passar na inicializacao da instancia)
-(id)initBookWithTitle:(NSString *)title
             andAuthor:(NSString *)author
          andPublisher:(NSString *)publisher
               andISBN:(NSString *)isbn
            andNrPages:(long)nrPages
      andYearPublished:(int)yearPublished
         andYearActual:(int)yearActual{
    
    self = [self init];// Isso garante da carga de inicializacao da classe pai (super) ou seja NSObject
    if (self) {
        //Init Code aqui!
        self.title = title;
        self.author = author;
        self.yearPublished = yearPublished;
        self.yearActual = yearActual;
        self.publisher = publisher;
        self.nrPages = nrPages;
        self.isbn = isbn;
    }
    return self;
}

//Metodo da Instancia da Classe Book, que retorna uma string com os dados da propriedades que tiverem valores validos.
-(NSString *)summary{
    
    NSString * summaryText;
    
    if (![self.title isEqualToString:@""]) {
        summaryText = [NSString stringWithFormat:@" \r Título do Livro:%@", self.title];
    }
    
    if (![self.author isEqualToString:@""]) {
        summaryText = [NSString stringWithFormat:@"%@ \r Autor:%@", summaryText, self.author];
    }
    
    if (![self.publisher isEqualToString:@""]) {
        summaryText = [NSString stringWithFormat:@"%@ \r Editora:%@", summaryText, self.publisher];
    }
    
    // Duas barras verticais || = OU
    if (!([self.isbn isEqualToString:@""] || [self.isbn isEqualToString:@"0000000000000"])) {
        summaryText = [NSString stringWithFormat:@"%@ \r ISBN:%@", summaryText, self.isbn];
    }
    
    //If para numero
    if (self.nrPages>0) {
        summaryText = [NSString stringWithFormat:@"%@ \r Páginas:%li", summaryText, self.nrPages];
    }
    
    //If para numero
    if (self.yearPublished>0) {
        summaryText = [NSString stringWithFormat:@"%@ \r Publicado em:%i", summaryText, self.yearPublished];
    }
    
    // Dois && = E
    if (self.yearPublished>0 && self.yearActual>0) {
        summaryText = [NSString stringWithFormat:@"%@ \r Idade:%i", summaryText, [self ageOfBook]];
    }
    
    return summaryText;
}

//Calcula a Idade do Livro
-(int)ageOfBook{
    int age=0;
    
    //Caso o Ano de Publicacao do Livro for MAIOR que ZERO e
    // o Ano Atual for tambem MAIOR que ZERO
    if (self.yearPublished>0 && self.yearActual>0) {
        
        // Se o ano da publicacao for menor que o ano atual
        if (self.yearPublished<self.yearActual) {
            
            //Calcula a idade do livro baseado no ano atual, menos o ano da publicação.
            age = self.yearActual - self.yearPublished;
            
        }
        
    }
    return age;
}

@end
