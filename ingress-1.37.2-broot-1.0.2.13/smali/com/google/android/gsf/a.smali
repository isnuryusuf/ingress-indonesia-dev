.class final Lcom/google/android/gsf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gsf/GoogleLoginCredentialsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 132
    new-array v0, p1, [Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    return-object v0
.end method
