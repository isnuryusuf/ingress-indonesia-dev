.class final Lcom/nianticproject/ingress/common/v/y;
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
    .line 226
    iput-object p1, p0, Lcom/nianticproject/ingress/common/v/y;->b:Lcom/nianticproject/ingress/common/v/l;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/v/y;->a:Lcom/nianticproject/ingress/common/v/j;

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
    .line 229
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/y;->b:Lcom/nianticproject/ingress/common/v/l;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->b(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/v/ah;->r()V

    .line 230
    return-void
.end method
