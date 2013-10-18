.class final Lcom/nianticproject/ingress/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/b;

.field final synthetic b:Lcom/nianticproject/ingress/NemesisActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisActivity;Lcom/nianticproject/ingress/common/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/nianticproject/ingress/bz;->b:Lcom/nianticproject/ingress/NemesisActivity;

    iput-object p2, p0, Lcom/nianticproject/ingress/bz;->a:Lcom/nianticproject/ingress/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/nianticproject/ingress/bz;->b:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisActivity;->b(Lcom/nianticproject/ingress/NemesisActivity;)Lcom/nianticproject/ingress/AndroidComm;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/bz;->a:Lcom/nianticproject/ingress/common/b;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/common/b;)V

    .line 967
    return-void
.end method
