.class final Lcom/nianticproject/ingress/common/scanner/modes/ac;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/aa;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ac;->a:Lcom/nianticproject/ingress/common/scanner/modes/aa;

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
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ac;->a:Lcom/nianticproject/ingress/common/scanner/modes/aa;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/aa;->b()V

    .line 60
    return-void
.end method
