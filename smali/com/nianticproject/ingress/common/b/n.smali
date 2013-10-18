.class public final Lcom/nianticproject/ingress/common/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/k;


# instance fields
.field private a:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/b/n;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 318
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/b/n;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 319
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/nianticproject/ingress/common/b/n;->a:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 323
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 2
    .parameter

    .prologue
    .line 327
    const-string/jumbo v0, "u_replaceColor"

    iget-object v1, p0, Lcom/nianticproject/ingress/common/b/n;->a:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 328
    return-void
.end method
