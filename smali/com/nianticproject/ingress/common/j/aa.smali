.class public final Lcom/nianticproject/ingress/common/j/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/j/aa;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/aa;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 21
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GLCommon;->glGetError()I

    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    sget-object v1, Lcom/nianticproject/ingress/common/j/aa;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "GL20 error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "GL Error (%s): %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lcom/badlogic/gdx/Gdx;->glu:Lcom/badlogic/gdx/graphics/GLU;

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/graphics/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    sget-object v1, Lcom/nianticproject/ingress/common/j/aa;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "GL20 error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "GL Error (%s): %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lcom/badlogic/gdx/Gdx;->glu:Lcom/badlogic/gdx/graphics/GLU;

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/graphics/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
