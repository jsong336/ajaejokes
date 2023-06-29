import ajaejokes 


def test_joke():
    j = ajaejokes.joke() 

    assert isinstance(j, str) 
    assert j != ""
    
    return 
