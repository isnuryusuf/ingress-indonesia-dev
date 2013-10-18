.class public Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;
.super Lorg/codehaus/jackson/map/BeanPropertyDefinition;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/BeanPropertyDefinition;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field protected _ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;",
            ">;"
        }
    .end annotation
.end field

.field protected _fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected _getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _internalName:Ljava/lang/String;

.field protected final _name:Ljava/lang/String;

.field protected _setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;-><init>()V

    .line 44
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 47
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 48
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 49
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 50
    return-void
.end method

.method private _anyExplicitNames(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 422
    :goto_0
    if-eqz p1, :cond_1

    .line 423
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 424
    const/4 v0, 0x1

    .line 427
    :goto_1
    return v0

    .line 422
    :cond_0
    iget-object p1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 427
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 458
    :goto_0
    if-eqz p1, :cond_1

    .line 459
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 463
    :goto_1
    return v0

    .line 458
    :cond_0
    iget-object p1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 463
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _anyVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 440
    :goto_0
    if-eqz p1, :cond_1

    .line 441
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x1

    .line 445
    :goto_1
    return v0

    .line 440
    :cond_0
    iget-object p1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 445
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private varargs _mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<+",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;)",
            "Lorg/codehaus/jackson/map/introspect/AnnotationMap;"
        }
    .end annotation

    .prologue
    .line 372
    aget-object v0, p2, p1

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getAllAnnotations()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    .line 373
    add-int/lit8 v0, p1, 0x1

    .line 374
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 375
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    .line 376
    invoke-direct {p0, v0, p2}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->merge(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 379
    :goto_1
    return-object v0

    .line 374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 379
    goto :goto_1
.end method

.method private _removeIgnored(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 384
    if-nez p1, :cond_0

    .line 387
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutIgnored()Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    goto :goto_0
.end method

.method private _removeNonVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 395
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutNonVisible()Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    goto :goto_0
.end method

.method private _trimByVisibility(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 403
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->trimByVisibility()Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    goto :goto_0
.end method

.method private findRenamed(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<+",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<+",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<+",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    move-object v0, p2

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    .line 485
    iget-object v2, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    .line 486
    if-eqz v2, :cond_0

    .line 487
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 491
    if-nez v0, :cond_1

    move-object v0, v1

    .line 484
    :cond_0
    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 497
    :cond_1
    iget-object v3, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 498
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Conflicting property name definitions: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' (for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ") vs \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\' (for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    :cond_2
    return-object v0
.end method

.method private static merge(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 288
    if-nez p0, :cond_0

    .line 294
    :goto_0
    return-object p1

    .line 291
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 292
    goto :goto_0

    .line 294
    :cond_1
    #calls: Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->append(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    invoke-static {p0, p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->access$000(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addAll(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V
    .locals 2
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 281
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 282
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 283
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 284
    return-void
.end method

.method public addCtor(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 264
    return-void
.end method

.method public addField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 260
    return-void
.end method

.method public addGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 268
    return-void
.end method

.method public addSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 272
    return-void
.end method

.method public anyExplicitNames()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyIgnorals()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyVisible()Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 11
    check-cast p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->compareTo(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)I
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_1

    .line 73
    const/4 v0, -0x1

    .line 81
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public findNewName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 473
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    .line 475
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    .line 476
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    .line 477
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    .line 478
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAccessor()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    .line 115
    :cond_0
    return-object v0
.end method

.method public getConstructorParameter()Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, v0

    .line 244
    :goto_1
    iget-object v0, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->getOwner()Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    instance-of v0, v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 248
    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .locals 6

    .prologue
    .line 203
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_1

    .line 204
    const/4 v1, 0x0

    .line 225
    :cond_0
    return-object v1

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 208
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v2, v1

    move-object v1, v0

    .line 209
    :goto_0
    if-eqz v2, :cond_0

    .line 210
    iget-object v0, v2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 211
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 212
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 213
    if-eq v3, v4, :cond_3

    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    :goto_1
    iget-object v1, v2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 219
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Multiple fields representing property \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public getGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 6

    .prologue
    .line 139
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_1

    .line 140
    const/4 v1, 0x0

    .line 165
    :cond_0
    return-object v1

    .line 143
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 144
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v2, v1

    move-object v1, v0

    .line 145
    :goto_0
    if-eqz v2, :cond_0

    .line 150
    iget-object v0, v2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 151
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 152
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 153
    if-eq v3, v4, :cond_3

    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 145
    :goto_1
    iget-object v1, v2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 159
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Conflicting getter definitions for property \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    return-object v0
.end method

.method public getMutator()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getConstructorParameter()Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v0

    .line 122
    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getSetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    .line 128
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 6

    .prologue
    .line 171
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_1

    .line 172
    const/4 v1, 0x0

    .line 197
    :cond_0
    return-object v1

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 176
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v2, v1

    move-object v1, v0

    .line 177
    :goto_0
    if-eqz v2, :cond_0

    .line 182
    iget-object v0, v2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 183
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 184
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 185
    if-eq v3, v4, :cond_3

    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    :goto_1
    iget-object v1, v2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 191
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Conflicting setter definitions for property \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public hasConstructorParameter()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasField()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGetter()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetter()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeAnnotations(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    if-eqz p1, :cond_2

    .line 349
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_1

    .line 350
    new-array v0, v1, [Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v5

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    .line 351
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    .line 353
    new-array v0, v5, [Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v4

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_3

    .line 358
    new-array v0, v1, [Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v5

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 360
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_4

    .line 361
    new-array v0, v5, [Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v4

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    .line 362
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 363
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    .line 364
    new-array v0, v4, [Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    .line 365
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto/16 :goto_0
.end method

.method public removeIgnored()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 310
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 311
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 312
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 313
    return-void
.end method

.method public removeNonVisible()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 324
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 326
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 328
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 330
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    const-string/jumbo v1, "[Property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'; ctors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", field(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", getter(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", setter(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 518
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimByVisibility()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 340
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 341
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 342
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 343
    return-void
.end method

.method public withName(Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    .locals 1
    .parameter

    .prologue
    .line 56
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;-><init>(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;Ljava/lang/String;)V

    return-object v0
.end method
