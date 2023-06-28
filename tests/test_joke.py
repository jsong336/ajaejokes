import dadjoke 


def test_joke():
    j = dadjoke.joke() 

    assert isinstance(j, str) 
    assert j != ""
    
    return 
