.class public Lorg/codehaus/jackson/map/type/HierarchicType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _actualType:Ljava/lang/reflect/Type;

.field protected final _genericType:Ljava/lang/reflect/ParameterizedType;

.field protected final _rawClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _subType:Lorg/codehaus/jackson/map/type/HierarchicType;

.field protected _superType:Lorg/codehaus/jackson/map/type/HierarchicType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_actualType:Ljava/lang/reflect/Type;

    .line 33
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 37
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    iput-object p1, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    .line 38
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can not be used to construct HierarchicType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Lorg/codehaus/jackson/map/type/HierarchicType;Lorg/codehaus/jackson/map/type/HierarchicType;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lorg/codehaus/jackson/map/type/HierarchicType;",
            "Lorg/codehaus/jackson/map/type/HierarchicType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_actualType:Ljava/lang/reflect/Type;

    .line 48
    iput-object p2, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    .line 49
    iput-object p3, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    .line 50
    iput-object p4, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_superType:Lorg/codehaus/jackson/map/type/HierarchicType;

    .line 51
    iput-object p5, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_subType:Lorg/codehaus/jackson/map/type/HierarchicType;

    .line 52
    return-void
.end method


# virtual methods
.method public final asGeneric()Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    return-object v0
.end method

.method public deepCloneWithoutSubtype()Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 62
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_superType:Lorg/codehaus/jackson/map/type/HierarchicType;

    if-nez v0, :cond_1

    move-object v4, v5

    .line 63
    :goto_0
    new-instance v0, Lorg/codehaus/jackson/map/type/HierarchicType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_actualType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Lorg/codehaus/jackson/map/type/HierarchicType;Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 64
    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSubType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 67
    :cond_0
    return-object v0

    .line 62
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_superType:Lorg/codehaus/jackson/map/type/HierarchicType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v4

    goto :goto_0
.end method

.method public final getRawClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getSuperType()Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_superType:Lorg/codehaus/jackson/map/type/HierarchicType;

    return-object v0
.end method

.method public final isGeneric()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubType(Lorg/codehaus/jackson/map/type/HierarchicType;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_subType:Lorg/codehaus/jackson/map/type/HierarchicType;

    return-void
.end method

.method public setSuperType(Lorg/codehaus/jackson/map/type/HierarchicType;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_superType:Lorg/codehaus/jackson/map/type/HierarchicType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
