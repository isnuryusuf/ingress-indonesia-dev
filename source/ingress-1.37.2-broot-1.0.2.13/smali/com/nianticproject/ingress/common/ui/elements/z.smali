.class final Lcom/nianticproject/ingress/common/ui/elements/z;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/z;->a:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

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
    .line 423
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/z;->a:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->g()V

    .line 424
    return-void
.end method
