.class public final Lcom/nianticproject/ingress/common/w/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/nianticproject/ingress/common/w/m;


# direct methods
.method public static a(F)F
    .locals 2
    .parameter

    .prologue
    .line 44
    sget-object v0, Lcom/nianticproject/ingress/common/w/l;->a:Lcom/nianticproject/ingress/common/w/m;

    const-string/jumbo v1, "Converter is null, did you set it using setConverter?"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/nianticproject/ingress/common/w/l;->a:Lcom/nianticproject/ingress/common/w/m;

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/w/m;->a(F)F

    move-result v0

    return v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/w/m;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    sput-object p0, Lcom/nianticproject/ingress/common/w/l;->a:Lcom/nianticproject/ingress/common/w/m;

    .line 35
    return-void
.end method
