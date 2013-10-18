.class final Lcom/nianticproject/ingress/common/e/h;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/af;

.field final synthetic b:Lcom/nianticproject/ingress/common/e/b;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/e/b;Lcom/nianticproject/ingress/shared/af;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/nianticproject/ingress/common/e/h;->b:Lcom/nianticproject/ingress/common/e/b;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/e/h;->a:Lcom/nianticproject/ingress/shared/af;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/e/h;->b:Lcom/nianticproject/ingress/common/e/b;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/e/h;->a:Lcom/nianticproject/ingress/shared/af;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/e/a;->a(Lcom/nianticproject/ingress/common/e/a;Lcom/nianticproject/ingress/shared/af;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/nianticproject/ingress/common/e/h;->b:Lcom/nianticproject/ingress/common/e/b;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/e/h;->a:Lcom/nianticproject/ingress/shared/af;

    invoke-static {v1, v2, v0}, Lcom/nianticproject/ingress/common/e/a;->a(Lcom/nianticproject/ingress/common/e/a;Lcom/nianticproject/ingress/shared/af;I)V

    .line 206
    return-void
.end method
