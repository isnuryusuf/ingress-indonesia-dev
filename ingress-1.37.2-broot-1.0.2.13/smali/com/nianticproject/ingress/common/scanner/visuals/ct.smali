.class final Lcom/nianticproject/ingress/common/scanner/visuals/ct;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/visuals/cs;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/cs;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ct;->a:Lcom/nianticproject/ingress/common/scanner/visuals/cs;

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
    .line 369
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ct;->a:Lcom/nianticproject/ingress/common/scanner/visuals/cs;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f()V

    .line 370
    return-void
.end method
