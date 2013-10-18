.class final Lcom/nianticproject/ingress/common/inventory/ui/x;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/inventory/ui/v;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/v;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/x;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/x;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->c(Lcom/nianticproject/ingress/common/inventory/ui/v;)V

    .line 300
    return-void
.end method
