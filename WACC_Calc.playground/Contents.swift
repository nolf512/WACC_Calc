import UIKit

var corporateBounds = Double()//社債発行
var marketCapitalization = Double() //株式時価総額
var riskFreeRate = Double() //リスクフリーレート
var beta = Double() //β
var marketRiskPremium = Double() //マーケットリスクプレミアム


//負債比率 => 社債の利回り
var debtRaito = Double()

//負債コスト
let debtCost = corporateBounds / (corporateBounds + marketCapitalization)

//CAPM
let capm = riskFreeRate + beta * marketRiskPremium

//株式コスト
let stockCost = marketCapitalization / (corporateBounds + marketCapitalization)

//WACC
let wacc = debtRaito * debtCost + capm * stockCost

print("WACC: \(wacc) => \(wacc * 100)%")
