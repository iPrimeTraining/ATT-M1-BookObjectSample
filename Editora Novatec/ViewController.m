//
//  ViewController.m
//  Editora Novatec
//
//  Created by Anderson Tagata on 18/07/15.
//  Copyright (c) 2015 Anderson Tagata. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "BookChildren.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Variavel que conterá todos os sumários dos livros
    NSString * booksSummaries = @"";
    NSString * separatorText = @"--------------------------";
    
    
    // Criando livro usando instancia da classe Book
    Book * livroExemplo1 = [[Book alloc] initBookSample1];
    //Montando o sumario do primeiro livro junto do texto de separacao.
    booksSummaries = [NSString stringWithFormat:@"%@ \r %@ %@", booksSummaries, separatorText, [livroExemplo1 summary]];
    
    
    // Criando livro usando instancia da classe Book
    Book * livroExemplo2 = [[Book alloc] initBookSample2];
    //Montando o sumario do segundo livro junto do texto de separacao.
    booksSummaries = [NSString stringWithFormat:@"%@ \r %@ %@", booksSummaries, separatorText, [livroExemplo2 summary]];
    
    
    //SubClass de Book (BookChildren)
    // Instancia de uma classe
    BookChildren * livroInfantil = [[BookChildren alloc] init];
    
    //Propriedades vem da classe PAI (superclasse)
    livroInfantil.title = @"Sitio do Pica Pau Amarelo";
    livroInfantil.author = @"Monteiro Lobato";
    livroInfantil.publisher = @"Editora Novatec";
    livroInfantil.isbn = @"1231234412";
    livroInfantil.yearPublished = 1980;
    livroInfantil.yearActual = 2015;
    livroInfantil.nrPages = 120;
    
    //Propriedades da subclasse (BookChildren)
    livroInfantil.category = @"Conto de fadas";
    livroInfantil.ageRecommended = 10;
    
    //Montando o sumario do terceiro livro junto do texto de separacao.
    booksSummaries = [NSString stringWithFormat:@"%@ \r %@ %@", booksSummaries, separatorText, [livroInfantil summary]];
    
    //Mostrando os livros no TextView
    self.displayTextView.text = booksSummaries;
    
    //Mostrando os livros no Log
    NSLog(@"%@",self.displayTextView.text);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
