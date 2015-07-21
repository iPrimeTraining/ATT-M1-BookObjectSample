//
//  Book.h
//  App 04 Objects Library
//
//  Created by Anderson Tagata on 18/07/15.
//  Copyright (c) 2015 ATT. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book;

@interface Book : NSObject

-(id)initBookSample1;
-(id)initBookSample2;
-(id)initBookWithTitle:(NSString *)title
             andAuthor:(NSString *)author
          andPublisher:(NSString *)publisher
               andISBN:(NSString *)isbn
            andNrPages:(long)nrPages
      andYearPublished:(int)yearPublished
         andYearActual:(int)yearActual;

@property (strong, nonatomic) NSString * title;     // Titulo do Livro
@property (strong, nonatomic) NSString * author;    // Autor
@property (strong, nonatomic) NSString * publisher; // Editora
@property (strong, nonatomic) NSString * isbn;      // Codigo de Barras ISBN
@property (nonatomic) long nrPages;                 // Quantidade de Paginas
@property (nonatomic) int yearPublished;            // Ano de Publicacao
@property (nonatomic) int yearActual;               // Ano Atual

//Trazer o sumario do livro em forma de texto
-(NSString *)summary;

//Retonar a idade do livro
-(int)ageOfBook;

@end
