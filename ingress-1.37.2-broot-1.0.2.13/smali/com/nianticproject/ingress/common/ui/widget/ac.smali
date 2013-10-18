.class final Lcom/nianticproject/ingress/common/ui/widget/ac;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/widget/aa;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ac;->a:Lcom/nianticproject/ingress/common/ui/widget/aa;

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
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ac;->a:Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/widget/aa;->a(Lcom/nianticproject/ingress/common/ui/widget/aa;)Lcom/nianticproject/ingress/common/ui/widget/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/widget/af;->a()V

    .line 141
    return-void
.end method
