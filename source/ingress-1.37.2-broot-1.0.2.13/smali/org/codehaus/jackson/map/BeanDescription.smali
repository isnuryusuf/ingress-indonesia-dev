.class public abstract Lorg/codehaus/jackson/map/BeanDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _type:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/codehaus/jackson/map/BeanDescription;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 47
    return-void
.end method


# virtual methods
.method public getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/codehaus/jackson/map/BeanDescription;->_type:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public abstract getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
.end method

.method public getType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/map/BeanDescription;->_type:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method
