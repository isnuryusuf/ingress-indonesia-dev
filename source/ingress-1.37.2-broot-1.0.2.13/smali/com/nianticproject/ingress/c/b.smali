.class public final Lcom/nianticproject/ingress/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/a/a;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/nianticproject/ingress/c/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/c/a;-><init>()V

    .line 26
    new-instance v1, Lcom/nianticproject/ingress/shared/a/c;

    invoke-direct {v1, v0, v0}, Lcom/nianticproject/ingress/shared/a/c;-><init>(Lcom/nianticproject/ingress/shared/a/e;Lcom/nianticproject/ingress/shared/a/d;)V

    return-object v1
.end method
