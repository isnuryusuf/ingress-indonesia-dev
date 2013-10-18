.class final Lcom/nianticproject/ingress/common/ui/widget/ad;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/widget/ag;

.field final synthetic b:Lcom/nianticproject/ingress/common/ui/widget/aa;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/aa;Lcom/nianticproject/ingress/common/ui/widget/ag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ad;->b:Lcom/nianticproject/ingress/common/ui/widget/aa;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/widget/ad;->a:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ad;->a:Lcom/nianticproject/ingress/common/ui/widget/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ad;->a:Lcom/nianticproject/ingress/common/ui/widget/ag;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ad;->b:Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/widget/aa;->b(Lcom/nianticproject/ingress/common/ui/widget/aa;)Lcom/nianticproject/ingress/common/ui/widget/ag;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ad;->b:Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/widget/aa;->a(Lcom/nianticproject/ingress/common/ui/widget/aa;)Lcom/nianticproject/ingress/common/ui/widget/af;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ad;->a:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/af;->a(Lcom/nianticproject/ingress/common/ui/widget/ag;)V

    .line 214
    :cond_0
    return-void
.end method
