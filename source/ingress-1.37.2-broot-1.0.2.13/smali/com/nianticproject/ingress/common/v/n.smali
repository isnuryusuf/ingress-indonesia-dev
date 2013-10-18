.class final Lcom/nianticproject/ingress/common/v/n;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/v/j;

.field final synthetic b:Lcom/nianticproject/ingress/common/v/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/nianticproject/ingress/common/v/n;->b:Lcom/nianticproject/ingress/common/v/l;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/v/n;->a:Lcom/nianticproject/ingress/common/v/j;

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
    .line 140
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/n;->b:Lcom/nianticproject/ingress/common/v/l;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->b(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/v/ah;->u()V

    .line 141
    return-void
.end method
