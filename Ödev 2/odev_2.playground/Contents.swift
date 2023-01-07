class Odev2
{
    
    // #1
    func celciusToFahreheit(x:Double) -> Double {
        return (x*1.8 + 32)
    }
    // #2
    func findPerimeter(a:Int,b:Int){
        print("Dikdörtgenin çevresi : \(a*2+b*2)")
    }
    // #3
    func factorialCalculator(x:Int) -> Int
    {
        if x == 0
        {
            return 1
        } else if x > 0
        {
            var sonuc = 1
            for i in 1...x
            {
                sonuc = sonuc * i
            }
            return sonuc
        } else
        {
            print("Faktöriyele dönüştürülecek sayı 0'dan büyük ve tam sayı olmalıdır")
            return x
        }
    }
    // #4
    func letterAFinder(a:String){
        var sayac = 0
        for i in a{
            if i == "a" || i == "A"{
                sayac+=1
            }
        }
        print("\(a), kelimesinde toplamda \(sayac) tane 'a' harfi bulunuyor.")
    }
    // #5
    func angleCalculator(x:Int) -> Int{
        return ((x-2)*180)
    }
    // #6
    func salaryCalculator(x:Int) -> Int{
        if x*8 <= 160{
            return x*8*10
        } else{
            return (x*8*20)-160*10
        }
    }
    // #7
    func quotaCalculator(x:Int) -> Int{
        if x >= 50{
            return 100 + ((x-50)*4)
        } else{
            return 100
        }
    }
}




let f = Odev2()

print(f.celciusToFahreheit(x: 15))
print(f.findPerimeter(a: 10, b: 8))
print(f.factorialCalculator(x: 6))
print(f.letterAFinder(a: "Adana"))
print(f.angleCalculator(x: 4))
print(f.salaryCalculator(x: 22))
print(f.quotaCalculator(x:60))
