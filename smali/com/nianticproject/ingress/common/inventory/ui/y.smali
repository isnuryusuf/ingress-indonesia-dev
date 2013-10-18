.class final Lcom/nianticproject/ingress/common/inventory/ui/y;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/inventory/ui/ae;

.field final synthetic b:Lcom/nianticproject/ingress/common/inventory/ui/v;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/v;Lcom/nianticproject/ingress/common/inventory/ui/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->b:Lcom/nianticproject/ingress/common/inventory/ui/v;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->a:Lcom/nianticproject/ingress/common/inventory/ui/ae;

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
    .line 462
    const-string/jumbo v0, "InventoryFilter"

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->a:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/inventory/ui/ae;->a(Lcom/nianticproject/ingress/common/inventory/ui/ae;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->b:Lcom/nianticproject/ingress/common/inventory/ui/v;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->a:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/inventory/ui/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->b:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->d(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/ui/widget/f;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->a:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/inventory/ui/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->setText(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->b:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->e(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/ui/widget/f;

    move-result-object v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->a:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->setVisible(Z)V

    .line 467
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->b:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->e(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/ui/widget/f;

    move-result-object v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->a:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->a:Lcom/nianticproject/ingress/common/inventory/ui/ae;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;->d:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->setText(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/y;->b:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/v;)V

    .line 469
    return-void

    .line 466
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 467
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
