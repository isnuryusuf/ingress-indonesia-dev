.class final Lcom/nianticproject/ingress/common/scanner/modes/ax;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/nianticproject/ingress/common/scanner/modes/aw;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/aw;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ax;->c:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iput-boolean p2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ax;->a:Z

    iput p3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ax;->b:I

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
    .line 684
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ax;->a:Z

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ax;->c:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ax;->b:I

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->c(Lcom/nianticproject/ingress/common/scanner/modes/aw;I)V

    .line 687
    :cond_0
    return-void
.end method
