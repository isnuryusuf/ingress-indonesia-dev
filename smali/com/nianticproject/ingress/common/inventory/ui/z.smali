.class final Lcom/nianticproject/ingress/common/inventory/ui/z;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/inventory/ui/aj;

.field final synthetic b:Lcom/nianticproject/ingress/common/inventory/ui/v;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/v;Lcom/nianticproject/ingress/common/inventory/ui/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/z;->b:Lcom/nianticproject/ingress/common/inventory/ui/v;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/inventory/ui/z;->a:Lcom/nianticproject/ingress/common/inventory/ui/aj;

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
    .line 481
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/z;->b:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->b(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/inventory/ui/ae;

    move-result-object v0

    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/z;->a:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    if-eq v0, v1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/z;->b:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->b(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/inventory/ui/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/z;->a:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    iput-object v1, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    .line 483
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/z;->b:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->f(Lcom/nianticproject/ingress/common/inventory/ui/v;)Z

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/z;->b:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->e(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/ui/widget/f;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/z;->a:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/inventory/ui/aj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->setText(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/z;->b:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->c(Lcom/nianticproject/ingress/common/inventory/ui/v;)V

    .line 487
    return-void
.end method
