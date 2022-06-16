package aop.aspects;

import aop.Student;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Aspect
public class UniversityLoggingAspect {

    @Before("execution(* getStudents())")
    public void beforeGetStudentsLoggingAdvice(){
        System.out.println("beforeGetStudentsLoggingAdvice: логируем получение списка студентов перед методом getStudents");
    }

    @After("execution(* getStudents())")
    public void afterFinallyGetStudentsLoggingAdvice(){
        System.out.println("afterFinallyGetStudentsLoggingAdvice: логируем нормальное окончание работы метода или выброс исключения");
    }

//    @AfterThrowing(pointcut = "execution(* getStudents())", throwing = "exception")
//    public void afterThrowingGetStudentsLoggingAdvice(Throwable exception){
//        System.out.println("afterThrowingGetStudentsLoggingAdvice: логируем выброс исключения " + exception);
//    }

//    @AfterReturning(pointcut = "execution(* getStudents())", returning = "students")
//    public void afterReturningGetStudentsLoggingAdvice(List<Student> students){
//        Student fitstStudent = students.get(0);
//        String nameSurname = fitstStudent.getNameSurname();
//        nameSurname = "Mr. " + nameSurname;
//        fitstStudent.setNameSurname(nameSurname);
//
//        double avgGrade = fitstStudent.getAvgGrade();
//        avgGrade = avgGrade + 1;
//        fitstStudent.setAvgGrade(avgGrade);
//
//        System.out.println("afterReturningGetStudentsLoggingAdvice: логируем получение списка студентов после метода getStudents");
//    }


}
