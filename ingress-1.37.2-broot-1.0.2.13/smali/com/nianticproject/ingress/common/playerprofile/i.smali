.class public final Lcom/nianticproject/ingress/common/playerprofile/i;
.super Lcom/nianticproject/ingress/common/ui/widget/ap;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V
    .locals 2
    .parameter

    .prologue
    .line 14
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/nianticproject/ingress/common/ui/widget/ap;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;Z)V

    .line 15
    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/playerprofile/i;->a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/nianticproject/ingress/common/playerprofile/i;->a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 26
    return-void
.end method
