.class public Lcom/nianticproject/ingress/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/g/b;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/g/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/nianticproject/ingress/g/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    sget-object v0, Lcom/nianticproject/ingress/g/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 122
    sget-object v0, Lcom/nianticproject/ingress/g/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 123
    return-void
.end method
