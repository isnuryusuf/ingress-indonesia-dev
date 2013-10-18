.class final Lcom/nianticproject/ingress/common/scanner/visuals/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/badlogic/gdx/math/Vector3;

.field b:F

.field c:F

.field d:F

.field e:Lcom/badlogic/gdx/math/Vector3;

.field f:Lcom/badlogic/gdx/math/Vector3;

.field final synthetic g:Lcom/nianticproject/ingress/common/scanner/visuals/w;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/w;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/x;->g:Lcom/nianticproject/ingress/common/scanner/visuals/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/x;->e:Lcom/badlogic/gdx/math/Vector3;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/x;->f:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/w;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/x;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/w;)V

    return-void
.end method
