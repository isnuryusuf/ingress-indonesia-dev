.class public final Lcom/nianticproject/ingress/common/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/aj;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/ai;

.field private static b:Lcom/nianticproject/ingress/common/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/nianticproject/ingress/common/ai;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ai;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/ai;->a:Lcom/nianticproject/ingress/common/ai;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/nianticproject/ingress/common/aj;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nianticproject/ingress/common/ai;->a:Lcom/nianticproject/ingress/common/ai;

    return-object v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/aj;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    sget-object v0, Lcom/nianticproject/ingress/common/ai;->b:Lcom/nianticproject/ingress/common/aj;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Multiple listeners not currently supported."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 27
    sput-object p0, Lcom/nianticproject/ingress/common/ai;->b:Lcom/nianticproject/ingress/common/aj;

    .line 28
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/nianticproject/ingress/common/aj;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/nianticproject/ingress/common/ai;->b:Lcom/nianticproject/ingress/common/aj;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Listener has not been added."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/nianticproject/ingress/common/ai;->b:Lcom/nianticproject/ingress/common/aj;

    .line 33
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/nianticproject/ingress/common/ai;->b:Lcom/nianticproject/ingress/common/aj;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/nianticproject/ingress/common/ai;->b:Lcom/nianticproject/ingress/common/aj;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/aj;->b()V

    .line 42
    :cond_0
    return-void
.end method
