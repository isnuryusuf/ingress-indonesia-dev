.class public Lorg/codehaus/jackson/map/BeanProperty$Std;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/map/BeanProperty;


# instance fields
.field protected final _contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

.field protected final _member:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

.field protected final _name:Ljava/lang/String;

.field protected final _type:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->_name:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 90
    iput-object p4, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->_member:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 91
    iput-object p3, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->_contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

    .line 92
    return-void
.end method


# virtual methods
.method public getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->_member:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->_type:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanProperty$Std;
    .locals 4
    .parameter

    .prologue
    .line 95
    new-instance v0, Lorg/codehaus/jackson/map/BeanProperty$Std;

    iget-object v1, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->_name:Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->_contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

    iget-object v3, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->_member:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    return-object v0
.end method
