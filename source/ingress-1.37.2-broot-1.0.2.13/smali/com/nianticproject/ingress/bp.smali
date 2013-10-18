.class final Lcom/nianticproject/ingress/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/NemesisActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/nianticproject/ingress/bp;->a:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/nianticproject/ingress/bp;->a:Lcom/nianticproject/ingress/NemesisActivity;

    sget-object v1, Lcom/nianticproject/ingress/cf;->c:Lcom/nianticproject/ingress/cf;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/NemesisActivity;->a(Lcom/nianticproject/ingress/cf;)V

    .line 1290
    return-void
.end method
