//
//  BookChildren.m
//  Editora Novatec
//
//  Created by Anderson Tagata on 18/07/15.
//  Copyright (c) 2015 Anderson Tagata. All rights reserved.
//

#import "Book.h" // Apos informar no .h sobre o @Class, importamos aqui a classe pai (Book.h)
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

//metodo que retorna informacoes completa da classe Book e BookChildren
// Como esse metodo existe na classe pai com o mesmo nome, estamos entao fazendo um OVERRIDE da mesma
-(NSString *) summary{

   NSString * summaryText = [super summary]; //Sumario inicial vem da classe pai BOOK (super)
    
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
