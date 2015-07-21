//
//  Book.m
//  App 04 Objects Library
//
//  Created by Anderson Tagata on 18/07/15.
//  Copyright (c) 2015 ATT. All rights reserved.
//

#import "Book.h"

@implementation Book

-(id)init{
    self = [super init];
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

-(id)initBookSample1{
    self = [super init];
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

-(id)initBookSample2{
    self = [super init];
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

-(id)initBookWithTitle:(NSString *)title
             andAuthor:(NSString *)author
          andPublisher:(NSString *)publisher
               andISBN:(NSString *)isbn
            andNrPages:(long)nrPages
      andYearPublished:(int)yearPublished
         andYearActual:(int)yearActual{
    
    self = [self init];
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

-(int)ageOfBook{
    //Alagbarbos
    //Calcula a idade do livro baseado no ano atual, menos o ano da publicação.
    
    return self.yearActual - self.yearPublished;
}

@end
