//
//  BookChildren.h
//  Editora Novatec
//
//  Created by Anderson Tagata on 18/07/15.
//  Copyright (c) 2015 Anderson Tagata. All rights reserved.
//

@class Book; //Devemos informar qual a classe pai aqui e fazer o import no .m

@interface BookChildren : Book //Sub Classe da classe pai BOOK

@property (strong,nonatomic) NSString * category;
@property (nonatomic)  int ageRecommended;

@end
