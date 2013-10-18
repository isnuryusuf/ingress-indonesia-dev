.class final Lcom/nianticproject/ingress/common/inventory/ui/w;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/inventory/ui/v;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/v;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/w;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

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
    .line 288
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/w;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/v;)V

    .line 289
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/w;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/w;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/inventory/ui/v;->b(Lcom/nianticproject/ingress/common/inventory/ui/v;)Lcom/nianticproject/ingress/common/inventory/ui/ae;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/nianticproject/ingress/common/inventory/ui/v;Lcom/nianticproject/ingress/common/inventory/ui/ae;)V

    .line 290
    return-void
.end method
