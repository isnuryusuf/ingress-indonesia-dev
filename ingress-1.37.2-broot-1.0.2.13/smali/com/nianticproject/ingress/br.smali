.class final Lcom/nianticproject/ingress/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/bq;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/bq;)V
    .locals 0
    .parameter

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/nianticproject/ingress/br;->a:Lcom/nianticproject/ingress/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/nianticproject/ingress/br;->a:Lcom/nianticproject/ingress/bq;

    iget-object v0, v0, Lcom/nianticproject/ingress/bq;->a:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisActivity;->d(Lcom/nianticproject/ingress/NemesisActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    return-void
.end method
