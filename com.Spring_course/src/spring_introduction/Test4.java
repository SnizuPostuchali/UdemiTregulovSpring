package spring_introduction;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test4 {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext2.xml");
        Dog myDog = context.getBean("myPet", Dog.class);
//        myDog.setName("Terminator");
        Dog yourDog = context.getBean("myPet", Dog.class);
//        yourDog.setName("Sara");
//        System.out.println(myDog.getName());
//        System.out.println(yourDog.getName());



        context.close();
    }
}
