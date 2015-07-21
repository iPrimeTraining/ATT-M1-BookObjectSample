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
    

    //SubClass de Book (BookChildren)
    // Instancia de uma classe
    BookChildren * livroInfantil = [[BookChildren alloc] init];
    
    //Propriedades vem da classe PAI (superclasse)
    livroInfantil.title = @"Sitio do Pica Pau Amarelo";
    livroInfantil.author = @"Monteiro Lobato";
    livroInfantil.publisher = @"Editora Novatec";
    livroInfantil.isbn = @"1231234412";
    livroInfantil.yearPublished = 1980;
    livroInfantil.nrPages = 120;
    
    //Propriedades da subclasse (BookChildren)
    livroInfantil.category = @"Conto de fadas";
    livroInfantil.ageRecommended = 10;
    
    self.displayTextView.text = [livroInfantil summaryBookChildren];
    
    NSLog(@"%@",self.displayTextView.text);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
