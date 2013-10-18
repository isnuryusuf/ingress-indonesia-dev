.class final Lcom/nianticproject/ingress/cj;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nianticproject/ingress/NemesisApplication;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisApplication;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/nianticproject/ingress/cj;->b:Lcom/nianticproject/ingress/NemesisApplication;

    iput-object p2, p0, Lcom/nianticproject/ingress/cj;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/nianticproject/ingress/cj;->b:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisApplication;->a(Lcom/nianticproject/ingress/NemesisApplication;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/cj;->b:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisApplication;->b(Lcom/nianticproject/ingress/NemesisApplication;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/cj;->b:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/NemesisApplication;->h()Lcom/google/analytics/tracking/android/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/cj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/bf;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
