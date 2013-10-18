.class public abstract Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase;
.super Lorg/codehaus/jackson/map/ser/std/SerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Collection",
        "<*>;>",
        "Lorg/codehaus/jackson/map/ser/std/SerializerBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final _property:Lorg/codehaus/jackson/map/BeanProperty;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 28
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 29
    return-void
.end method
