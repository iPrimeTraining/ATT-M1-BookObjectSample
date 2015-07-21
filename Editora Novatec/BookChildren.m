//
//  BookChildren.m
//  Editora Novatec
//
//  Created by Anderson Tagata on 18/07/15.
//  Copyright (c) 2015 Anderson Tagata. All rights reserved.
//

#import "BookChildren.h"

@implementation BookChildren

-(id)init{
    self = [super init];
    if (self) {
        //Init Code aqui!
        self.category = @"Livro Infantil";
        self.ageRecommended = 8;
    }
    return self;
}

-(NSString *)summaryBookChildren{

   NSString * summaryText = [self summary]; //Sumario inicial vem da classe pai BOOK
    
    // Adicionando os itens extras
    if (![self.category isEqualToString:@""]) {
        summaryText = [NSString stringWithFormat:@"%@ \r Categoria:%@", summaryText, self.category];
    }
        //If para numero
    if (self.ageRecommended>0) {
        summaryText = [NSString stringWithFormat:@"%@ \r Idade Recomendada:%i anos", summaryText, self.ageRecommended];
    }
    
    return summaryText;
    
}


@end
