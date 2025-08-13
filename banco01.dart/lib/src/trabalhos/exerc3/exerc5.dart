/* 5. Herança e Polimorfismo com Animais
Crie uma classe `Animal` com um método `fazerSom()`. 
Crie classes `Cachorro`, `Gato` e `Vaca` que herdam de `Animal` e implementam `fazerSom()` de maneira diferente.
 */

abstract class Gato{
  void fazerSom();
  void calar();
}

class Animal implements Gato{
  @override
  void fazerSom() {
    print('Piu-Piu');
  }

  @override
  void calar(){
    print('');
  }
}

void main() {
  Animal meuAnimal = Animal();
  meuAnimal.fazerSom();
  meuAnimal.calar();
}