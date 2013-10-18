.class public final Lcom/nianticproject/ingress/shared/rpc/InviteParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final customMessage:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final inviteeEmailAddress:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/InviteParams;->inviteeEmailAddress:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/InviteParams;->customMessage:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/InviteParams;->inviteeEmailAddress:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/rpc/InviteParams;->customMessage:Ljava/lang/String;

    .line 30
    return-void
.end method
