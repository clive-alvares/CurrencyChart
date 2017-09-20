//
//  ViewController.m
//  CurrencyChartObjectiveC
//
//  Created by Clive Alvares on 2017-09-19.
//  Copyright © 2017 Clive Alvares. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    // Do any additional setup after loading the view, typically from a nib.
    
    // setting up images
    UIImage *americanFlag = [UIImage imageNamed:@"american-flag-small"];
    UIImage *armFlag = [UIImage imageNamed:@"armenian-flag-small"];
    UIImage *ausFlag = [UIImage imageNamed:@"austrailian-flag-small"];
    UIImage *indianFlag = [UIImage imageNamed:@"indian-flag-small"];
    UIImage *britishFlag = [UIImage imageNamed:@"british-flag-small"];
    UIImage *euFlag = [UIImage imageNamed:@"euFlag"];
    
    // setting up title label
    UILabel *xeLiveEx = [[UILabel alloc] initWithFrame:CGRectMake(11, 20, 183, 45)];
    xeLiveEx.textColor = UIColor.blueColor;
    xeLiveEx.backgroundColor = UIColor.whiteColor;
    xeLiveEx.text = @"XE Live Exchange Rates";
    [xeLiveEx setFont:[UIFont systemFontOfSize:12]];
    [self.view addSubview:xeLiveEx];
    
    [xeLiveEx.leadingAnchor constraintEqualToAnchor: self.view.layoutMarginsGuide.leadingAnchor  constant:0].active = true;
    [xeLiveEx.heightAnchor constraintEqualToConstant:45].active = true;
    [xeLiveEx.widthAnchor constraintEqualToConstant: 183].active = true;
    [xeLiveEx.topAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.topAnchor constant:10].active = true;
    
    //Set up columns
    
    //set up us column
    UIImageView *amerColImg = [[UIImageView alloc] initWithImage: americanFlag];
    amerColImg.frame = CGRectMake(0, 0, 30, 18.5);
    UIView *amerFlgView = [[UIView alloc] initWithFrame: CGRectMake(0, 27, 30, 18.5)];
    [amerFlgView addSubview:amerColImg];
    
    UILabel *USD = [[UILabel alloc] initWithFrame:CGRectMake(0, 37, 30, 18.5)];
    USD.textColor = UIColor.blackColor;
    USD.text = @"USD";
    UIStackView *colTitle = [[UIStackView alloc] init];
    [colTitle addArrangedSubview:amerFlgView];
    [colTitle addArrangedSubview:USD];
    
    colTitle.axis = UILayoutConstraintAxisVertical;
    colTitle.distribution = UIStackViewDistributionEqualSpacing;
    colTitle.spacing = 0.0;
    colTitle.translatesAutoresizingMaskIntoConstraints = false;
    
    UILabel *usLabel1 = [[UILabel alloc] initWithFrame: CGRectMake(115, 47, 60, 18.5)];
    UILabel *usLabel2 = [[UILabel alloc] initWithFrame: CGRectMake(115, 47, 60, 18.5)];
    UILabel *usLabel3 = [[UILabel alloc] initWithFrame: CGRectMake(115, 47, 60, 18.5)];
    UILabel *usLabel4 = [[UILabel alloc] initWithFrame: CGRectMake(115, 47, 60, 18.5)];
    UILabel *usLabel5 = [[UILabel alloc] initWithFrame: CGRectMake(115, 47, 60, 18.5)];
    UILabel *usLabel6 = [[UILabel alloc] initWithFrame: CGRectMake(115, 47, 60, 18.5)];
    
    usLabel1.text = @"1.00000";
    usLabel2.text = @"1.00000";
    usLabel3.text = @"1.00000";
    usLabel4.text = @"1.00000";
    usLabel5.text = @"1.00000";
    usLabel6.text = @"1.00000";
    
    
    UIStackView *usCol = [[UIStackView alloc] init];
    
    
    usCol.axis = UILayoutConstraintAxisVertical;
    usCol.spacing = 15.0;
    usCol.translatesAutoresizingMaskIntoConstraints = false;
    
    [usCol addArrangedSubview: colTitle];
    [usCol addArrangedSubview: usLabel1];
    [usCol addArrangedSubview: usLabel2];
    [usCol addArrangedSubview: usLabel3];
    [usCol addArrangedSubview: usLabel4];
    [usCol addArrangedSubview: usLabel5];
    [usCol addArrangedSubview: usLabel6];
    
    // set up british col
    
    
    
    
    
    
                         
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
