.class public Lcom/badlogic/gdx/utils/ReflectionPool;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ReflectionPool;->type:Ljava/lang/Class;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/utils/Pool;-><init>(I)V

    .line 37
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ReflectionPool;->type:Ljava/lang/Class;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ReflectionPool;->type:Ljava/lang/Class;

    .line 33
    return-void
.end method


# virtual methods
.method protected newObject()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ReflectionPool;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 46
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ReflectionPool;->type:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 56
    :goto_1
    const/4 v2, 0x0

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    .line 49
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ReflectionPool;->type:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 50
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 52
    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Class cannot be created (missing no-arg constructor): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ReflectionPool;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :catch_3
    move-exception v1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to create new instance: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ReflectionPool;->type:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
