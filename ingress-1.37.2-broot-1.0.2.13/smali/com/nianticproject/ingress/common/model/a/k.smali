.class public final Lcom/nianticproject/ingress/common/model/a/k;
.super Lcom/nianticproject/ingress/common/model/a/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/model/a/j",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/model/a/j;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/model/a/j;-><init>(Ljava/lang/Object;J)V

    .line 6
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .parameter

    .prologue
    .line 3
    return-object p1
.end method
