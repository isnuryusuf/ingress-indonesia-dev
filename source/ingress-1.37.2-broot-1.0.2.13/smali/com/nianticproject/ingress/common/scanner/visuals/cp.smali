.class final Lcom/nianticproject/ingress/common/scanner/visuals/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field public final a:Lcom/nianticproject/ingress/common/j/t;

.field public final b:Lcom/nianticproject/ingress/common/j/s;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/nianticproject/ingress/common/j/t;

    new-array v1, v5, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v3, "a_position"

    invoke-direct {v2, v6, v7, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v6

    const/4 v2, 0x1

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v4, "a_texCoord0"

    invoke-direct {v3, v5, v7, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x5

    const-string/jumbo v5, "a_color"

    invoke-direct {v3, v4, v7, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v6, v1}, Lcom/nianticproject/ingress/common/j/t;-><init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->a:Lcom/nianticproject/ingress/common/j/t;

    .line 134
    new-instance v0, Lcom/nianticproject/ingress/common/j/s;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/j/s;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->b:Lcom/nianticproject/ingress/common/j/s;

    .line 135
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->a:Lcom/nianticproject/ingress/common/j/t;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/t;->dispose()V

    .line 140
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->b:Lcom/nianticproject/ingress/common/j/s;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/s;->dispose()V

    .line 141
    return-void
.end method
