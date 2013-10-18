.class final Lcom/nianticproject/ingress/common/ui/g/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/g/t;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/g/m;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/g/m;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/g/n;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/n;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/m;->a(Lcom/nianticproject/ingress/common/ui/g/m;)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/n;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/g/m;->b(Lcom/nianticproject/ingress/common/ui/g/m;)Lcom/nianticproject/ingress/common/inventory/ui/q;

    move-result-object v1

    .line 368
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/g/n;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/g/m;->a(Lcom/nianticproject/ingress/common/ui/g/m;)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->e()V

    .line 376
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/g/n;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/g/m;->b(Lcom/nianticproject/ingress/common/ui/g/m;)Lcom/nianticproject/ingress/common/inventory/ui/q;

    move-result-object v2

    .line 377
    if-eq v2, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/n;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/m;->c(Lcom/nianticproject/ingress/common/ui/g/m;)Lcom/nianticproject/ingress/common/ui/g/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/g/k;->a(Lcom/nianticproject/ingress/common/inventory/ui/q;)Lcom/nianticproject/ingress/common/ui/g/h;

    move-result-object v0

    .line 382
    :cond_0
    if-eqz v0, :cond_1

    .line 383
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/n;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/g/m;->a(Lcom/nianticproject/ingress/common/ui/g/m;)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 385
    :cond_1
    return-void
.end method
