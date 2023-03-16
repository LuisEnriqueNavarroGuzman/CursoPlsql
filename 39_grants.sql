/*
    GRANT privileges ON object TO user;
    REVOKE privileges ON object FROM user;

    Privilege	Description
    SELECT	    Ability to perform SELECT statements on the table.
    INSERT	    Ability to perform INSERT statements on the table.
    UPDATE	    Ability to perform UPDATE statements on the table.
    DELETE	    Ability to perform DELETE statements on the table.
    REFERENCES	Ability to create a constraint that refers to the table.
    ALTER	      Ability to perform ALTER TABLE statements to change the table definition.
    INDEX	      Ability to create an index on the table with the create index statement.
    ALL	        All privileges on table
*/


grant execute on MTI_ING_UNIV.DBP_ING_UNIV_PASE_CAJA TO REGER_RIN;
grant delete on MTI_INGRESOS.Ri_Concentrado_01_Liq_Det TO REGER_RIN;
grant delete on  MTI_INGRESOS.Ri_Concentrado_01_Liq TO REGER_RIN;
grant delete on  MTI_INGRESOS.ri_concentrado_liq_det TO REGER_RIN;

grant update on  MTI_INGRESOS.Ri_Concentrado_01_Liq TO REGER_RIN;
grant update on  MTI_INGRESOS.Ri_Concentrado_Liq TO REGER_RIN;


grant insert on MTI_ING_UNIV.In_Pase_Caja_Ftes_Tmp to REGER_RIN;
grant update on MTI_ING_UNIV.In_Pase_Caja_Ftes_Tmp to REGER_RIN;
grant delete on MTI_ING_UNIV.In_Pase_Caja_Ftes_Tmp to REGER_RIN;    

grant insert on In_Pase_Caja_Datos_Tmp to REGER_RIN;

grant execute on MTI_ING_UNIV.DBP_ING_UNIV_CONSTANTES TO REGER_RIN;

grant execute on Mti_Ingresos.Dbp_Cont_Apoyo TO REGER_RIN;

EXEC REGER_DEV.P_GENERATE_ORDS_GRANTS;


SELECT * FROM USER_SYS_PRIVS; 
SELECT * FROM USER_TAB_PRIVS;
SELECT * FROM USER_ROLE_PRIVS;
