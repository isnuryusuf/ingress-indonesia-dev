.class final Lcom/nianticproject/ingress/common/ui/elements/d;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/c;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/c;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/d;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

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
    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/d;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    invoke-static {}, La;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->c(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 160
    return-void
.end method
