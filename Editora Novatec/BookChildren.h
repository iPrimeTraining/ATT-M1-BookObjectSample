//
//  BookChildren.h
//  Editora Novatec
//
//  Created by Anderson Tagata on 18/07/15.
//  Copyright (c) 2015 Anderson Tagata. All rights reserved.
//

#import "Book.h"

@interface BookChildren : Book //Sub Classe da classe pai BOOK

@property (strong,nonatomic) NSString * category;
@property (nonatomic)  int ageRecommended;

//metodo que retorna informacoes completa da classe Book e BookChildren
-(NSString *) summaryBookChildren;

@end
