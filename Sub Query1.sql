SELECT EMPNO, ENAME, JOB, SAL, DEPTNO 
FROM EMP
WHERE SAL IN
	    (
	     SELECT SAL
	     FROM EMP
	     WHERE HIREDATE IN
     		              (
		               SELECT HIREDATE
		               FROM EMP
                               WHERE DEPTNO=20
		              )
	    )
/
