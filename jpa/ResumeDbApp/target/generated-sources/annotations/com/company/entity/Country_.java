package com.company.entity;

import com.company.entity.User;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2021-08-06T21:58:50", comments="EclipseLink-2.7.7.v20200504-rNA")
@StaticMetamodel(Country.class)
public class Country_ { 

    public static volatile ListAttribute<Country, User> userList;
    public static volatile SingularAttribute<Country, String> nationality;
    public static volatile ListAttribute<Country, User> userList1;
    public static volatile SingularAttribute<Country, String> name;
    public static volatile SingularAttribute<Country, Integer> id;

}