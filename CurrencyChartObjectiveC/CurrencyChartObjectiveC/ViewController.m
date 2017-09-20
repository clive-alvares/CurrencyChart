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
    [xeLiveEx setFont:[UIFont systemFontOfSize:17]];
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
    UILabel *usLabel2 = [[UILabel alloc] initWithFrame: CGRectMake(115, 67, 60, 18.5)];
    UILabel *usLabel3 = [[UILabel alloc] initWithFrame: CGRectMake(115, 77, 60, 18.5)];
    UILabel *usLabel4 = [[UILabel alloc] initWithFrame: CGRectMake(115, 107, 60, 18.5)];
    UILabel *usLabel5 = [[UILabel alloc] initWithFrame: CGRectMake(115, 127, 60, 18.5)];
    UILabel *usLabel6 = [[UILabel alloc] initWithFrame: CGRectMake(115, 147, 60, 18.5)];
    
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
    UIImageView *britColImg = [[UIImageView alloc] initWithImage: britishFlag];
    britColImg.frame = CGRectMake(0, 0, 30, 18.5);
    UIView *britFlgView = [[UIView alloc] initWithFrame: CGRectMake(0, 27, 30, 18.5)];
    [britFlgView addSubview:britColImg];
    
    UILabel *GBP = [[UILabel alloc] initWithFrame:CGRectMake(0, 37, 30, 18.5)];
    GBP.textColor = UIColor.blackColor;
    GBP.text = @"GBP";
    UIStackView *colBritTitle = [[UIStackView alloc] init];
    [colBritTitle addArrangedSubview:britFlgView];
    [colBritTitle addArrangedSubview:GBP];
    
    colBritTitle.axis = UILayoutConstraintAxisVertical;
    colBritTitle.distribution = UIStackViewDistributionEqualSpacing;
    colBritTitle.spacing = 0.0;
    colBritTitle.translatesAutoresizingMaskIntoConstraints = false;
    
    UILabel *britLabel1 = [[UILabel alloc] initWithFrame: CGRectMake(115, 47, 60, 18.5)];
    UILabel *britLabel2 = [[UILabel alloc] initWithFrame: CGRectMake(115, 67, 60, 18.5)];
    UILabel *britLabel3 = [[UILabel alloc] initWithFrame: CGRectMake(115, 87, 60, 18.5)];
    UILabel *britLabel4 = [[UILabel alloc] initWithFrame: CGRectMake(115, 107, 60, 18.5)];
    UILabel *britLabel5 = [[UILabel alloc] initWithFrame: CGRectMake(115, 127, 60, 18.5)];
    UILabel *britLabel6 = [[UILabel alloc] initWithFrame: CGRectMake(115, 147, 60, 18.5)];
    
    britLabel1.text = @"1.00000";
    britLabel2.text = @"1.00000";
    britLabel3.text = @"1.00000";
    britLabel4.text = @"1.00000";
    britLabel5.text = @"1.00000";
    britLabel6.text = @"1.00000";
    
    
    UIStackView *britCol = [[UIStackView alloc] init];
    
    
    britCol.axis = UILayoutConstraintAxisVertical;
    britCol.spacing = 15.0;
    britCol.translatesAutoresizingMaskIntoConstraints = false;
    
    [britCol addArrangedSubview: colBritTitle];
    [britCol addArrangedSubview: britLabel1];
    [britCol addArrangedSubview: britLabel2];
    [britCol addArrangedSubview: britLabel3];
    [britCol addArrangedSubview: britLabel4];
    [britCol addArrangedSubview: britLabel5];
    [britCol addArrangedSubview: britLabel6];

    // set up armenian column
    UIImageView *armenTitColImg = [[UIImageView alloc] initWithImage: armFlag];
    armenTitColImg.frame = CGRectMake(0, 0, 30, 18.5);
    UIView *armenTitFlgView = [[UIView alloc] initWithFrame: CGRectMake(0, 27, 30, 18.5)];
    [armenTitFlgView addSubview:armenTitColImg];
    
    UILabel *titAMD = [[UILabel alloc] initWithFrame:CGRectMake(0, 37, 30, 18.5)];
    titAMD.textColor = UIColor.blackColor;
    titAMD.text = @"AMD";
    UIStackView *colArmTitle = [[UIStackView alloc] init];
    [colArmTitle addArrangedSubview:armenTitFlgView];
    [colArmTitle addArrangedSubview:titAMD];
    
    colArmTitle.axis = UILayoutConstraintAxisVertical;
    colArmTitle.distribution = UIStackViewDistributionEqualSpacing;
    colArmTitle.spacing = 0.0;
    colArmTitle.translatesAutoresizingMaskIntoConstraints = false;
    
    UILabel *armLabel1 = [[UILabel alloc] initWithFrame: CGRectMake(115, 47, 60, 18.5)];
    UILabel *armLabel2 = [[UILabel alloc] initWithFrame: CGRectMake(115, 67, 60, 18.5)];
    UILabel *armLabel3 = [[UILabel alloc] initWithFrame: CGRectMake(115, 87, 60, 18.5)];
    UILabel *armLabel4 = [[UILabel alloc] initWithFrame: CGRectMake(115, 107, 60, 18.5)];
    UILabel *armLabel5 = [[UILabel alloc] initWithFrame: CGRectMake(115, 127, 60, 18.5)];
    UILabel *armLabel6 = [[UILabel alloc] initWithFrame: CGRectMake(115, 147, 60, 18.5)];
    
    armLabel1.text = @"1.00000";
    armLabel2.text = @"1.00000";
    armLabel3.text = @"1.00000";
    armLabel4.text = @"1.00000";
    armLabel5.text = @"1.00000";
    armLabel6.text = @"1.00000";
    
    
    UIStackView *armCol = [[UIStackView alloc] init];
    
    
    armCol.axis = UILayoutConstraintAxisVertical;
    armCol.spacing = 15.0;
    armCol.translatesAutoresizingMaskIntoConstraints = false;
    
    [armCol addArrangedSubview: colArmTitle];
    [armCol addArrangedSubview: armLabel1];
    [armCol addArrangedSubview: armLabel2];
    [armCol addArrangedSubview: armLabel3];
    [armCol addArrangedSubview: armLabel4];
    [armCol addArrangedSubview: armLabel5];
    [armCol addArrangedSubview: armLabel6];
    
    //set up stack of stacks
    UIStackView *mainStack = [[UIStackView alloc] init];
    [mainStack addArrangedSubview:usCol];
    [mainStack addArrangedSubview:britCol];
    [mainStack addArrangedSubview:armCol];
    mainStack.axis = UILayoutConstraintAxisHorizontal;
    mainStack.distribution = UIStackViewDistributionFillProportionally;
    mainStack.spacing = 0.0;
    mainStack.translatesAutoresizingMaskIntoConstraints = false;
    mainStack.alignment = UIStackViewAlignmentLeading;
    
    [self.view addSubview:mainStack];
    
    
    //set up flag col
    UIImageView *ausColImg = [[UIImageView alloc] initWithImage:ausFlag];
    ausColImg.frame = CGRectMake(0, 0, 30, 18.5);
    UIView *ausFlgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 18.5)];
    [ausFlgView addSubview:ausColImg];
    UILabel *AUS = [[UILabel alloc] initWithFrame:CGRectMake(30, 20, 60, 18.5)];
    AUS.text = @"AUS";
    UIStackView *ausRow = [[UIStackView alloc] init];
    [ausRow addArrangedSubview:ausFlgView];
    [ausRow addArrangedSubview:AUS];
    ausRow.axis = UILayoutConstraintAxisHorizontal;
    ausRow.distribution = UIStackViewDistributionFillProportionally;
    ausRow.spacing = 0.0;
    ausRow.translatesAutoresizingMaskIntoConstraints = false;
    ausRow.alignment = UIStackViewAlignmentTrailing;
    
    
    UIImageView *armenColImg = [[UIImageView alloc] initWithImage:armFlag];
    armenColImg.frame = CGRectMake(0, 0, 30, 18.5);
    UIView *armenFlgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 18.5)];
    [armenFlgView addSubview:armenColImg];
    UILabel *AMD = [[UILabel alloc] initWithFrame:CGRectMake(30, 20, 60, 18.5)];
    AMD.text = @"AMD";
    UIStackView *amdRow = [[UIStackView alloc] init];
    [amdRow addArrangedSubview:armenFlgView];
    [amdRow addArrangedSubview:AMD];
    amdRow.axis = UILayoutConstraintAxisHorizontal;
    amdRow.distribution = UIStackViewDistributionFillProportionally;
    amdRow.spacing = 0.0;
    amdRow.translatesAutoresizingMaskIntoConstraints = false;
    amdRow.alignment = UIStackViewAlignmentTrailing;
    
    UIImageView *indColImg = [[UIImageView alloc] initWithImage:indianFlag];
    indColImg.frame = CGRectMake(0, 0, 30, 18.5);
    UIView *indFlgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 18.5)];
    [indFlgView addSubview:indColImg];
    UILabel *INR = [[UILabel alloc] initWithFrame:CGRectMake(30, 20, 60, 18.5)];
    
    UIStackView *indRow = [[UIStackView alloc] init];
    [indRow addArrangedSubview:indFlgView];
    [indRow addArrangedSubview:INR];
    indRow.axis = UILayoutConstraintAxisHorizontal;
    indRow.distribution = UIStackViewDistributionFillProportionally;
    indRow.spacing = 0.0;
    indRow.translatesAutoresizingMaskIntoConstraints = false;
    indRow.alignment = UIStackViewAlignmentTrailing;
    
    UIStackView *flagCol = [[UIStackView alloc] init];
    [flagCol addArrangedSubview:ausRow];
    [flagCol addArrangedSubview:amdRow];
    [flagCol addArrangedSubview:indRow];
    
    flagCol.axis = UILayoutConstraintAxisVertical;
    flagCol.spacing = 55;
    flagCol.translatesAutoresizingMaskIntoConstraints =false;
    [self.view addSubview:flagCol];
    
    //Column and Row Constraints
    [colTitle.widthAnchor constraintEqualToConstant:30.0].active = true;
    [colTitle.heightAnchor constraintEqualToConstant:37.0].active = true;
    [colBritTitle.widthAnchor constraintEqualToConstant:30].active = true;
    [colBritTitle.heightAnchor constraintEqualToConstant:37].active = true;
    [colArmTitle.widthAnchor constraintEqualToConstant:30].active = true;
    [colArmTitle.heightAnchor constraintEqualToConstant:37].active = true;
    
    [britFlgView.widthAnchor constraintEqualToConstant:30].active = true;
    // ***********************
    [amerFlgView.widthAnchor constraintEqualToConstant:30].active = true;
    [amerFlgView.heightAnchor constraintEqualToConstant:18.5].active = true;
    
    [ausFlgView.widthAnchor constraintEqualToConstant:30].active = true;
    [ausFlgView.heightAnchor constraintEqualToConstant:18.5].active = true;
    
    
    [indFlgView.widthAnchor constraintEqualToConstant:30].active = true;
    [indFlgView.heightAnchor constraintEqualToConstant:18.5].active = true;
    
    [armenFlgView.widthAnchor constraintEqualToConstant:30].active = true;
    [armenFlgView.heightAnchor constraintEqualToConstant:18.5].active = true;
    
    [amerColImg.leadingAnchor constraintEqualToAnchor:amerFlgView.leadingAnchor].active = true;
    [amerColImg.bottomAnchor constraintEqualToAnchor:amerFlgView.bottomAnchor].active = true;
    
    [armenColImg.leadingAnchor constraintEqualToAnchor:armenFlgView.leadingAnchor].active = true;
    [armenColImg.bottomAnchor constraintEqualToAnchor:armenFlgView.bottomAnchor].active = true;
    
    [indColImg.leadingAnchor constraintEqualToAnchor:indFlgView.leadingAnchor].active = true;
    [indColImg.bottomAnchor constraintEqualToAnchor:indFlgView.bottomAnchor].active = true;
    
    [ausColImg.leadingAnchor constraintEqualToAnchor:ausFlgView.leadingAnchor].active = true;
    [ausColImg.bottomAnchor constraintEqualToAnchor:ausFlgView.bottomAnchor].active = true;
    
    [flagCol.topAnchor constraintEqualToAnchor:mainStack.topAnchor constant:50].active = true;
    [flagCol.widthAnchor constraintEqualToConstant:80].active = true;
    [flagCol.leadingAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.leadingAnchor].active = true;
    [flagCol.heightAnchor constraintEqualToConstant:160].active =true;
    
    
    [mainStack.leadingAnchor constraintEqualToAnchor:flagCol.trailingAnchor].active = true;
    [mainStack.topAnchor constraintEqualToAnchor:xeLiveEx.bottomAnchor constant: 20].active = true;
    [mainStack.heightAnchor constraintEqualToConstant:250].active = true;
    [mainStack.widthAnchor constraintEqualToConstant:320].active = true;
    
    [usCol.heightAnchor constraintEqualToConstant:250].active = true;
    [usCol.widthAnchor constraintEqualToConstant:80].active = true;
    [britCol.heightAnchor constraintEqualToConstant:250].active = true;
    [britCol.widthAnchor constraintEqualToConstant:80].active = true;
    [armCol.heightAnchor constraintEqualToConstant:250].active = true;
    [armCol.widthAnchor constraintEqualToConstant:80].active = true;
    
    
    
    
    
    
    
    
                         
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
