.class public abstract Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructViewBased(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 18
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 19
    new-instance v0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;-><init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Ljava/lang/Class;)V

    .line 21
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;-><init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)V

    goto :goto_0
.end method
