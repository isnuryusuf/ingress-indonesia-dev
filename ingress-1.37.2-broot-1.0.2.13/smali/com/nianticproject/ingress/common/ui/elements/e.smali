.class final Lcom/nianticproject/ingress/common/ui/elements/e;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/c;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/c;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/e;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

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
    invoke-static {}, La;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    .line 335
    const-class v1, Lcom/nianticproject/ingress/common/playerprofile/ak;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->c(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 336
    return-void
.end method
