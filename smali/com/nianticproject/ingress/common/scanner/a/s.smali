.class final Lcom/nianticproject/ingress/common/scanner/a/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/badlogic/gdx/graphics/Mesh;

.field private final b:[S


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/Mesh;[S)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/s;->a:Lcom/badlogic/gdx/graphics/Mesh;

    .line 52
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/a/s;->b:[S

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/a/s;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/s;->a:Lcom/badlogic/gdx/graphics/Mesh;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 60
    move v1, v0

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/s;->b:[S

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/s;->a:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/a/s;->b:[S

    aget-short v4, v4, v0

    invoke-virtual {v2, p1, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 63
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/s;->b:[S

    aget-short v2, v2, v0

    add-int/2addr v1, v2

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method final a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/s;->a:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    .line 57
    return-void
.end method
